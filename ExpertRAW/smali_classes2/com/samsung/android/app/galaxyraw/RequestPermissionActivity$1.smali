.class Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    return-void
.end method

.method public onCreateDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    return-void
.end method

.method public onDismissDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    return-void
.end method

.method public onNegativeButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_LOCATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->access$000(Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "RequestPermission"

    if-eqz v0, :cond_1

    const-string p1, "onNegativeButtonClicked: RUNTIME_PERMISSIONS_LOCATION, start previous Activity"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->access$100(Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;)V

    goto :goto_0

    :cond_1
    const-string v0, "onNegativeButtonClicked: RUNTIME_PERMISSIONS_LOCATION"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "location_dialog_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->finish()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method public onPositiveButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    return-void
.end method
