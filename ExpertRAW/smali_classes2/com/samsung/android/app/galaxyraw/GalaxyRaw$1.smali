.class Lcom/samsung/android/app/galaxyraw/GalaxyRaw$1;
.super Landroid/database/ContentObserver;
.source "GalaxyRaw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/GalaxyRaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;Landroid/os/Handler;)V
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$1;->this$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", uri : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GalaxyRaw1"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$1;->this$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->access$100(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "Ignored best photo content observer message because Camera is not running"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$1;->this$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isCapturing()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$1;->this$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->access$200(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isPictureSaving()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    const-string p2, "bestphoto"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Ready to query for best photo"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$1;->this$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateLatestMedia()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$1;->this$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateThumbnail()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$1;->this$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->access$300(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Not enough space in database"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$1;->this$0:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const p1, 0x7f12030c

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
