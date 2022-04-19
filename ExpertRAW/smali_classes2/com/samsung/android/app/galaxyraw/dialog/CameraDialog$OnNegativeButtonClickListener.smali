.class Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;
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
    name = "OnNegativeButtonClickListener"
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

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

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

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

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_3

    const/16 v0, 0xc

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/16 v0, 0xf

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V

    const-string p2, "002"

    const-string v0, "6357"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p2, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2200(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Z)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getViewerFragment()Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->releaseClickBlock()V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getNegativeEventIdByDialogIdArray(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->access$2100(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
