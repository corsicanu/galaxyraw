.class Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;
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
    name = "OnNegativeButtonClickListener"
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
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

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getNegativeEventIdBySettingDialogIdArray(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog$OnNegativeButtonClickListener;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->access$300(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;)V

    return-void
.end method
