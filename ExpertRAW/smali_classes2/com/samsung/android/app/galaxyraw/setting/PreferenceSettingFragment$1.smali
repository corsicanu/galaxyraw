.class Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;
.super Ljava/util/HashMap;
.source "PreferenceSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5055"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5049"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5223"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5032"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SMART_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5036"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5130"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5400"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5023"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5122"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0103"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0102"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0101"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0105"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5028"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SOUND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5037"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_VIBRATIONS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5101"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->REVIEW:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "5027"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DNG_COMPRESSION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const-string v1, "0107"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
