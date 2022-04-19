.class Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$4;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "PreferenceSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->lambda$showLocationTagPopupInSecureLock$4$PreferenceSettingFragment(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

.field final synthetic val$activity:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$4;->this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$4;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 4

    const-string v0, "PrefSettingFragment"

    const-string v1, "SECURE_LOCK_IN_LOCATION_TAG_FROM_SETTING Dialog - onDismissSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$4;->this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->access$502(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$4;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->isNetworkProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$4;->this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$4;->this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$4;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->SECURE_LOCK_IN_LOCATION_TAG_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result v2

    const/16 v3, 0x7ea

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$4;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "location_tag_first_launch_camera_key"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$4;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->requestHighAccuracyLocationMode()V

    :cond_2
    :goto_0
    return-void
.end method
