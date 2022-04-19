.class Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$2;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->initCoverCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$2;->this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "RequestPermission"

    const-string v0, "State Cover Open"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$2;->this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->access$200(Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$2;->this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->finish()V

    :cond_0
    return-void
.end method
