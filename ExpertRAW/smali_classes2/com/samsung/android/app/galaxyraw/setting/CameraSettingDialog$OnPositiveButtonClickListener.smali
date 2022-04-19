.class Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;
.super Ljava/lang/Object;
.source "CameraSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPositiveButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
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

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    sget-object p2, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$SettingDialogId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startContactUsActivity()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result v0

    const/16 v1, 0x7ea

    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;II)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->requestHighAccuracyLocationMode()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->resetSetting()V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->access$400(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Z)V

    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getPositiveEventIdBySettingDialogIdArray(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnPositiveButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->access$300(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;)V

    return-void
.end method
