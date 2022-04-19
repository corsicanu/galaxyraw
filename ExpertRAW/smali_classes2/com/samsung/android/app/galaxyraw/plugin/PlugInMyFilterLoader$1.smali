.class Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader$1;
.super Landroid/database/ContentObserver;
.source "PlugInMyFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;Landroid/os/Handler;)V
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader$1;->this$0:Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
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

    const-string p1, "PlugInMyFilterLoader"

    const-string v0, "PlugInMyFilterLoader : onChange"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader$1;->this$0:Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;->access$000(Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

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

    const-string p2, "notifyMyFilterAdd"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "notifyDelete"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader$1;->this$0:Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;->access$200(Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader$1;->this$0:Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;->access$100(Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;)V

    :goto_0
    return-void
.end method
