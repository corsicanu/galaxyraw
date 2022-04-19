.class Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPositiveButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    sget-object p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraDialogManager$DialogId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "CameraDialog"

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getViewerFragment()Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->launchLightRoom()V

    goto/16 :goto_0

    :pswitch_2
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getSamsungAppsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPTIONAL_APP_UPDATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2400(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/RestrictionPolicyUtil;->isMicroPhoneRestricted(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "skipped - microphone is restricted."

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2300(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p2, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->dismissCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p2, v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V

    const-string p2, "002"

    const-string v0, "6358"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p2, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2200(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Z)V

    goto/16 :goto_0

    :pswitch_8
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->startApplicationSettingInfo(Landroid/app/Activity;I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V

    goto/16 :goto_0

    :pswitch_a
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getViewerFragment()Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->deleteCurrentImage()V

    goto :goto_0

    :pswitch_c
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getSamsungAppsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->startActivity(Landroid/content/Intent;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MANDATORY_APP_UPDATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_d
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->startActivity(Landroid/content/Intent;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->finish()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MANDATORY_SYSTEM_UPDATE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getPositiveEventIdByDialogIdArray(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$WUs6Xpl5-wBqc1vzj09qbK05Aoc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$WUs6Xpl5-wBqc1vzj09qbK05Aoc;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2100(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
