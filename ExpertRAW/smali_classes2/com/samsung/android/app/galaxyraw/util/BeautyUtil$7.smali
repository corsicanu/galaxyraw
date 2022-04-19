.class Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;
.super Ljava/util/HashMap;
.source "BeautyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BEAUTY_BRIGHTEN_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_BRIGHTEN_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_CHEEK_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_RESHAPE_CHEEK_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_CHIN_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_RESHAPE_CHIN_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_EYES_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_RESHAPE_EYE_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_LIP_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_RESHAPE_LIP_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_NOSE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_RESHAPE_NOSE_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_LARGE_EYES_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_EYE_ENLARGE_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_SLIM_FACE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_SLIM_FACE_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_SMART_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->SMART_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BEAUTY_BRIGHTEN_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_BRIGHTEN_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_CHEEK_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_RESHAPE_CHEEK_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_CHIN_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_RESHAPE_CHIN_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_EYES_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_RESHAPE_EYE_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_LIP_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_RESHAPE_LIP_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_NOSE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_RESHAPE_NOSE_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_LARGE_EYES_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_EYE_ENLARGE_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_SLIM_FACE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_SLIM_FACE_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_SMART_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->SMART_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_FOCUS_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_FACE_RETOUCH_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
