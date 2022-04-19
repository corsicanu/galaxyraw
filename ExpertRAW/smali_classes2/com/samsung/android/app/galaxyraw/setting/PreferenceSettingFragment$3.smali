.class Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$3;
.super Ljava/lang/Object;
.source "PreferenceSettingFragment.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showEULADialog(Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

.field final synthetic val$preference:Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$preference"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$3;->this$0:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$3;->val$preference:Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$3;->val$preference:Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onCreateDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V
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

.method public onDismissDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V
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

.method public onNegativeButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$3;->val$preference:Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onPositiveButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V
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
