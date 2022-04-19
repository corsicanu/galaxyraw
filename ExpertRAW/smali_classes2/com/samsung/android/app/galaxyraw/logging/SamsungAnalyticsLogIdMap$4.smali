.class Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$4;
.super Landroid/util/SparseArray;
.source "SamsungAnalyticsLogIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->CONFIRM_RESET:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result v0

    const-string v1, "6304"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->SECURE_LOCK_IN_CONTACT_US:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result v0

    const-string v1, "6306"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result v0

    const-string v1, "6367"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$4;->put(ILjava/lang/Object;)V

    return-void
.end method
