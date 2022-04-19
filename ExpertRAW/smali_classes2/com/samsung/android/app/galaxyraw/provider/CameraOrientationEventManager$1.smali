.class Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$1;
.super Landroid/view/OrientationEventListener;
.source "CameraOrientationEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, "CameraOrientationEvtMgr"

    const-string p1, "android onOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->access$000(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->access$002(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;I)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->access$000(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->access$100(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;I)V

    :cond_1
    return-void
.end method
