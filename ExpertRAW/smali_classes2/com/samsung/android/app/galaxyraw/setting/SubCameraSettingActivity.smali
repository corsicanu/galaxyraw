.class public Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SubCameraSettingActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubCameraSetting"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

.field private mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity$1;-><init>(Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity$2;-><init>(Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getFragment(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragmentName",
            "bundle"
        }
    .end annotation

    const-string p0, "advanced_recording_options"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;->newInstance(Landroid/os/Bundle;)Lcom/samsung/android/app/galaxyraw/setting/AdvancedRecordingOptionsFragment;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "save_options"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->newInstance(Landroid/os/Bundle;)Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "settings_to_keep"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;->newInstance(Landroid/os/Bundle;)Lcom/samsung/android/app/galaxyraw/setting/SettingsToKeepFragment;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "shooting_method"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->newInstance(Landroid/os/Bundle;)Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "how_to_use"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/setting/HowtoUseFragment;->newInstance(Landroid/os/Bundle;)Lcom/samsung/android/app/galaxyraw/setting/HowtoUseFragment;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private hideStatusBarForLandscape(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private showFragment(Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragment",
            "fragmentName"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0a0121

    invoke-virtual {p0, v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method protected getCameraSettings()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "camera-parcel"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "SubCameraSetting"

    if-nez p0, :cond_0

    const-string p0, "Finish. Bundle is null."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "setting"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraSettings[Parcel] given by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public synthetic lambda$onResume$0$SubCameraSettingActivity(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExecutorCommand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubCameraSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->finish()V

    goto :goto_0

    :cond_1
    const/16 p1, 0xbb8

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->hideStatusBarForLandscape(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SubCameraSetting"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera-parcel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    if-nez v1, :cond_1

    const-string v0, "Finish. CameraSettings is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->finish()V

    return-void

    :cond_1
    const-string p1, "fragment_name"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0d00d6

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->setContentView(I)V

    const v1, 0x7f0a00bf

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v1, 0x7f0a02fc

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    if-nez v1, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getFragment(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->showFragment(Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;)V

    :cond_3
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "camera.action.CAMERA_START"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string v0, "SubCameraSetting"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBroadcastReceiver isn\'t registered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "SubCameraSetting"

    const-string p2, "BACK KEY PRESSED!"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isInMultiWindowMode"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "reverse_create"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "camera-parcel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "SubCameraSetting"

    const-string v0, "onOptionsItemSelected : the intent of parent activity is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    const-string v0, "SubCameraSetting"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->deInitialize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const-string v0, "SubCameraSetting"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    if-nez v1, :cond_0

    const-string v1, "Finish. CameraSettings is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BIXBY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->initialize(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->setCurrentSettingActivity(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SubCameraSettingActivity$RvGnufRt9v_QLqWlMOLowCdAzA8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SubCameraSettingActivity$RvGnufRt9v_QLqWlMOLowCdAzA8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->setExecutorCommandListener(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;)V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->hideStatusBarForLandscape(I)V

    return-void
.end method

.method protected setSubCameraSettingTitle(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method
