.class Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader$1;
.super Landroid/database/ContentObserver;
.source "PlugInFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "handler"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader$1;->this$0:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selfChange",
            "uri"
        }
    .end annotation

    const-string p1, "PlugInFilterLoader"

    const-string v0, "PlugInFilterLoader : onChange"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader$1;->this$0:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->access$000(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onChange - ignore case, camera is destroying"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move p2, v0

    goto :goto_1

    :sswitch_0
    const-string p2, "notifyAdd"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    goto :goto_1

    :sswitch_1
    const-string p2, "notifyDelete"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "isUpdated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader$1;->this$0:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->access$100(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;)V

    goto :goto_2

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader$1;->this$0:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->access$200(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;)V

    goto :goto_2

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader$1;->this$0:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->access$300(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3087d7cf -> :sswitch_2
        0x3d2cae54 -> :sswitch_1
        0x715f3898 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
