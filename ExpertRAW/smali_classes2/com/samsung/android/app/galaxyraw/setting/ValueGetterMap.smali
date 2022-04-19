.class Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;
.super Ljava/lang/Object;
.source "ValueGetterMap.java"


# instance fields
.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

.field private final mValueGetterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraSettings"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    return-void
.end method


# virtual methods
.method public contains(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;->get()I

    move-result p0

    return p0
.end method

.method initialize()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$8StDs_vqF0O0brva9ElGB7t2794;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$8StDs_vqF0O0brva9ElGB7t2794;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$0W8YvBDGF6TgFnrZWzeC1zLQfdc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$0W8YvBDGF6TgFnrZWzeC1zLQfdc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$sCqDKthP15ixa5BqyZvSw7_hKnw;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$sCqDKthP15ixa5BqyZvSw7_hKnw;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$RomHCe8XCcI86b9GhFmtIuOk9Yk;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$RomHCe8XCcI86b9GhFmtIuOk9Yk;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Ry2O8PPvwxoA79zmY8zHWwmZbSQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Ry2O8PPvwxoA79zmY8zHWwmZbSQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$jRV6iau6ZFtnD38KQPxavLgfA80;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$jRV6iau6ZFtnD38KQPxavLgfA80;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Pe1kIgIrTsel8RpGpjIYoSeP834;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Pe1kIgIrTsel8RpGpjIYoSeP834;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$1Q03_I37tnZBcvq6UUjWE-7GfX4;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$1Q03_I37tnZBcvq6UUjWE-7GfX4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$QYFie4Xmo_IzqnCobg9TUS8xSuM;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$QYFie4Xmo_IzqnCobg9TUS8xSuM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$qbnX4BDnXHYUFMnQW1Ep-HPMDfU;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$qbnX4BDnXHYUFMnQW1Ep-HPMDfU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$HJ8EMjvTuBmdXHFoZIpeHaZLUBg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$HJ8EMjvTuBmdXHFoZIpeHaZLUBg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$16vlhJ-zfsLcTkKLKFNaFHVQgJc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$16vlhJ-zfsLcTkKLKFNaFHVQgJc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$THMP7ti6qR-CxlCx9IPRuobnGZE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$THMP7ti6qR-CxlCx9IPRuobnGZE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$329k_PiVJcX67KfxOUxQrRYNI8M;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$329k_PiVJcX67KfxOUxQrRYNI8M;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$fnN0OlH3Omd6-_im4ZfbcZr1ik8;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$fnN0OlH3Omd6-_im4ZfbcZr1ik8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$En-wRAeidlnpE5FEkAZPlz0P_1I;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$En-wRAeidlnpE5FEkAZPlz0P_1I;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ca7l0e_EKmwSIH4xyzwuXPckImY;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ca7l0e_EKmwSIH4xyzwuXPckImY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9GWy7BlGdwf4la9EBShZ2Z8dFQU;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9GWy7BlGdwf4la9EBShZ2Z8dFQU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$j2lZdJRadywt3K0VtU9izHFeWdU;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$j2lZdJRadywt3K0VtU9izHFeWdU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SpP3x7k1389zc_jRjpQRzAkMm8Y;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SpP3x7k1389zc_jRjpQRzAkMm8Y;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$BrHQTfXdyPQoncse_WcToPtPKsE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$BrHQTfXdyPQoncse_WcToPtPKsE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ChgVG4q_7Zgj0yoUaU1JKfe-ZPI;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ChgVG4q_7Zgj0yoUaU1JKfe-ZPI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$TF8yQi2RdF6x_jWnm8f_QP9Y9ww;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$TF8yQi2RdF6x_jWnm8f_QP9Y9ww;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$V34-PHA7MIeRPsbGkyj6wcA2VEg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$V34-PHA7MIeRPsbGkyj6wcA2VEg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$uruBmIPFf29qhGKWxIPS9S0qZq0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$uruBmIPFf29qhGKWxIPS9S0qZq0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$HxlUI_WMkYTL5mMvnWdHlO1FbHg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$HxlUI_WMkYTL5mMvnWdHlO1FbHg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4eIHeJ_dLsG8EUHJW8Pe9uYD6tI;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4eIHeJ_dLsG8EUHJW8Pe9uYD6tI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ZQHSC1ONVX2iQ1XkFRvyyhs5B08;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ZQHSC1ONVX2iQ1XkFRvyyhs5B08;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Th2Q3iK5cC4mv3YzKLQWWeCmk2o;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Th2Q3iK5cC4mv3YzKLQWWeCmk2o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Jdeb8Y8OYjt8-5RvPSLU8EbaZZk;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Jdeb8Y8OYjt8-5RvPSLU8EbaZZk;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOOD_BLUR_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ntCF5a7BbR2UYvGNVTidQlNOOqU;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ntCF5a7BbR2UYvGNVTidQlNOOqU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4f7Lhl3akNyC3leLPXPfXwnq7ZE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4f7Lhl3akNyC3leLPXPfXwnq7ZE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$XREvBMvJv7J7EqQO-vG-5BYfy_g;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$XREvBMvJv7J7EqQO-vG-5BYfy_g;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$5qPtonMvY27P-RLnGfiZSjke06E;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$5qPtonMvY27P-RLnGfiZSjke06E;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ClPFpMBKlC610pRNWqIJRg8ZC6Q;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ClPFpMBKlC610pRNWqIJRg8ZC6Q;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$QgW8004Tw7t_1LZbfN9GugSDuA4;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$QgW8004Tw7t_1LZbfN9GugSDuA4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$pt6sTuPTqcVNzBmL5aIrqfkqY9o;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$pt6sTuPTqcVNzBmL5aIrqfkqY9o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$JvN8DF93HrDxGer6z2eSjB5PrdE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$JvN8DF93HrDxGer6z2eSjB5PrdE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$N-bQ-OOqpwtus610BqBmw9mKgzQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$N-bQ-OOqpwtus610BqBmw9mKgzQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$JsxZuJqMxMCfzQMVvTuBOfMkk_g;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$JsxZuJqMxMCfzQMVvTuBOfMkk_g;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PjzNnUqbkWlIqpKfxrb5Yssblvc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PjzNnUqbkWlIqpKfxrb5Yssblvc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$j3UTOz-UWnd1eciK4AEajX42IiA;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$j3UTOz-UWnd1eciK4AEajX42IiA;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$kaDxm0X7cMR07W2De3FOwiAryc4;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$kaDxm0X7cMR07W2De3FOwiAryc4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E2ToqnUMUMh-OtuhpT_Y0kxYmKU;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E2ToqnUMUMh-OtuhpT_Y0kxYmKU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ocMZ0_aqOrOaumBPuFYuPdg2nmg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ocMZ0_aqOrOaumBPuFYuPdg2nmg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VHViuivAumxt7UyDN55CqfuOANE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VHViuivAumxt7UyDN55CqfuOANE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_CAMERA_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Z0DhXCps7fidTg9z8b1eHDlzZ8w;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Z0DhXCps7fidTg9z8b1eHDlzZ8w;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$WYWmg_egAcfSkDlSb1ajlzjzujQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$WYWmg_egAcfSkDlSb1ajlzjzujQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_FILTERS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$IRILVGx7SlCrPHuN9VhNK2skd54;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$IRILVGx7SlCrPHuN9VhNK2skd54;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$qDQaV9pZf5xAwvmqbvieCVe3jVg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$qDQaV9pZf5xAwvmqbvieCVe3jVg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SvurQ-VevHcvySWs_ViOlQI1BlM;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SvurQ-VevHcvySWs_ViOlQI1BlM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$R_pCDM7EoNAEyYhGoLlpRXakbro;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$R_pCDM7EoNAEyYhGoLlpRXakbro;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$rlUrL6weDdRWdluq4W1-4GGP5IA;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$rlUrL6weDdRWdluq4W1-4GGP5IA;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$YrA276jlT4RVzleQU7Fv4ut60pE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$YrA276jlT4RVzleQU7Fv4ut60pE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$_DdhnIbvrd1EyHRmzh7uME5-Utk;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$_DdhnIbvrd1EyHRmzh7uME5-Utk;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$5nrx2Dfdwd9_SnnD_RelKxdRBrI;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$5nrx2Dfdwd9_SnnD_RelKxdRBrI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$qDLRFNu9o9GYm4GVyzDTaRamJlE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$qDLRFNu9o9GYm4GVyzDTaRamJlE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->REVIEW:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$JGM_qQmGl2HdA98f2dPHTvZLYug;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$JGM_qQmGl2HdA98f2dPHTvZLYug;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Cdl4Keg1SFbUv_y4P3RGBfVIL4Q;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Cdl4Keg1SFbUv_y4P3RGBfVIL4Q;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Ry1I4h87yXyq6NvNt1e9IpwWltQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Ry1I4h87yXyq6NvNt1e9IpwWltQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_USE_MULTIRECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$M9Sb9E3ZxINKoJxTiH-gpcxNapM;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$M9Sb9E3ZxINKoJxTiH-gpcxNapM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ZUcfcZ0jDyj1v8XJdWeHAa9JM7g;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ZUcfcZ0jDyj1v8XJdWeHAa9JM7g;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$kZZCj7pS2ZrhEJpTxEAeSwwvJRA;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$kZZCj7pS2ZrhEJpTxEAeSwwvJRA;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Th2Q3iK5cC4mv3YzKLQWWeCmk2o;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Th2Q3iK5cC4mv3YzKLQWWeCmk2o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ocMZ0_aqOrOaumBPuFYuPdg2nmg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ocMZ0_aqOrOaumBPuFYuPdg2nmg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VHViuivAumxt7UyDN55CqfuOANE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VHViuivAumxt7UyDN55CqfuOANE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$6auyomaVXyFGRWb5ERAybUrFrgI;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$6auyomaVXyFGRWb5ERAybUrFrgI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$m-HmPu8GozXZ39SHorx9jp486Hg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$m-HmPu8GozXZ39SHorx9jp486Hg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Th2Q3iK5cC4mv3YzKLQWWeCmk2o;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Th2Q3iK5cC4mv3YzKLQWWeCmk2o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ocMZ0_aqOrOaumBPuFYuPdg2nmg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ocMZ0_aqOrOaumBPuFYuPdg2nmg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VHViuivAumxt7UyDN55CqfuOANE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VHViuivAumxt7UyDN55CqfuOANE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$YCDJCHXs1Jp12wwyFeq3QnIFstI;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$YCDJCHXs1Jp12wwyFeq3QnIFstI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$m-HmPu8GozXZ39SHorx9jp486Hg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$m-HmPu8GozXZ39SHorx9jp486Hg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$rmsAQic2DEIZJDfC1X5ld5lgdcc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$rmsAQic2DEIZJDfC1X5ld5lgdcc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_VIBRATIONS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$oMWnqljvft5s9r4_lz1w0PzWcEc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$oMWnqljvft5s9r4_lz1w0PzWcEc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$8StDs_vqF0O0brva9ElGB7t2794;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$8StDs_vqF0O0brva9ElGB7t2794;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4eIHeJ_dLsG8EUHJW8Pe9uYD6tI;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4eIHeJ_dLsG8EUHJW8Pe9uYD6tI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Th2Q3iK5cC4mv3YzKLQWWeCmk2o;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Th2Q3iK5cC4mv3YzKLQWWeCmk2o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ocMZ0_aqOrOaumBPuFYuPdg2nmg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ocMZ0_aqOrOaumBPuFYuPdg2nmg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VHViuivAumxt7UyDN55CqfuOANE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VHViuivAumxt7UyDN55CqfuOANE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Cdl4Keg1SFbUv_y4P3RGBfVIL4Q;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Cdl4Keg1SFbUv_y4P3RGBfVIL4Q;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$m-HmPu8GozXZ39SHorx9jp486Hg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$m-HmPu8GozXZ39SHorx9jp486Hg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$qDQaV9pZf5xAwvmqbvieCVe3jVg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$qDQaV9pZf5xAwvmqbvieCVe3jVg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$m-HmPu8GozXZ39SHorx9jp486Hg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$m-HmPu8GozXZ39SHorx9jp486Hg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4eIHeJ_dLsG8EUHJW8Pe9uYD6tI;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4eIHeJ_dLsG8EUHJW8Pe9uYD6tI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Th2Q3iK5cC4mv3YzKLQWWeCmk2o;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Th2Q3iK5cC4mv3YzKLQWWeCmk2o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ocMZ0_aqOrOaumBPuFYuPdg2nmg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ocMZ0_aqOrOaumBPuFYuPdg2nmg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VHViuivAumxt7UyDN55CqfuOANE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VHViuivAumxt7UyDN55CqfuOANE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$qDQaV9pZf5xAwvmqbvieCVe3jVg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$qDQaV9pZf5xAwvmqbvieCVe3jVg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$laIoaizEVt-wKTS6T-R4uOXHJGY;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$laIoaizEVt-wKTS6T-R4uOXHJGY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4eIHeJ_dLsG8EUHJW8Pe9uYD6tI;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4eIHeJ_dLsG8EUHJW8Pe9uYD6tI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f14Jb2kRBSx9tp2TW2zg1fiBBs0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Th2Q3iK5cC4mv3YzKLQWWeCmk2o;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Th2Q3iK5cC4mv3YzKLQWWeCmk2o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ocMZ0_aqOrOaumBPuFYuPdg2nmg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ocMZ0_aqOrOaumBPuFYuPdg2nmg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VHViuivAumxt7UyDN55CqfuOANE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VHViuivAumxt7UyDN55CqfuOANE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$qDQaV9pZf5xAwvmqbvieCVe3jVg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$qDQaV9pZf5xAwvmqbvieCVe3jVg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$laIoaizEVt-wKTS6T-R4uOXHJGY;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$laIoaizEVt-wKTS6T-R4uOXHJGY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$m-HmPu8GozXZ39SHorx9jp486Hg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$m-HmPu8GozXZ39SHorx9jp486Hg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$m-HmPu8GozXZ39SHorx9jp486Hg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$m-HmPu8GozXZ39SHorx9jp486Hg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mValueGetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$oaYBuRs7qjj7sscqNw_O_oB_thU;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$oaYBuRs7qjj7sscqNw_O_oB_thU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
