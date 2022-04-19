.class Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;
.super Ljava/lang/Object;
.source "ValueSetterMap.java"


# instance fields
.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

.field private final mValueSetterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/setting/ValueSetter;",
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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    return-void
.end method

.method static synthetic lambda$initialize$0(I)V
    .locals 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeValueSetterMap : invalid key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$initialize$1(I)V
    .locals 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeValueSetterMap : invalid key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$initialize$10(I)V
    .locals 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeValueSetterMap : invalid key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$initialize$2(I)V
    .locals 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeValueSetterMap : invalid key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$initialize$3(I)V
    .locals 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeValueSetterMap : invalid key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$initialize$4(I)V
    .locals 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeValueSetterMap : invalid key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$initialize$5(I)V
    .locals 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeValueSetterMap : invalid key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$initialize$6(I)V
    .locals 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeValueSetterMap : invalid key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$initialize$7(I)V
    .locals 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeValueSetterMap : invalid key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$initialize$8(I)V
    .locals 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeValueSetterMap : invalid key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$initialize$9(I)V
    .locals 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeValueSetterMap : invalid key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method initialize()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$IfNH7PmJ-DcEN_1jaNKJQ6Sd4FQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$IfNH7PmJ-DcEN_1jaNKJQ6Sd4FQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$UlGjgXSRDer3_5x9ghP9RXmSE7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$UlGjgXSRDer3_5x9ghP9RXmSE7o;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$yPmpt-MOnreWDzdZQd5OstwSv2g;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$yPmpt-MOnreWDzdZQd5OstwSv2g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$PO962OA7nWomJpr2tAp8yYBGxpc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$PO962OA7nWomJpr2tAp8yYBGxpc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$2Y5vCkMQgOV64s_5MNQblwbpoww;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$2Y5vCkMQgOV64s_5MNQblwbpoww;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$YN9J3OGzk6FeHPh2K0Wwa1rjxlg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$YN9J3OGzk6FeHPh2K0Wwa1rjxlg;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$bBHhDl--YgK1sdlhYpA61WZOSL0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$bBHhDl--YgK1sdlhYpA61WZOSL0;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$pfj9dGWqfVQJM8m0fSPzih6tiMA;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$pfj9dGWqfVQJM8m0fSPzih6tiMA;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$h5fpQsj1uSBvgp5BoAwvVgq8QyY;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$h5fpQsj1uSBvgp5BoAwvVgq8QyY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$TzU7rJNzMFLWnRu2G9q-v28Y2dg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$TzU7rJNzMFLWnRu2G9q-v28Y2dg;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$Q_GKYyWuiFgZZticB6Y8GL_9v9c;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$Q_GKYyWuiFgZZticB6Y8GL_9v9c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$uI0vMaa7WN1HQ1BB8i1Jt1EfkZE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$uI0vMaa7WN1HQ1BB8i1Jt1EfkZE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$-bCWk5ZXsHR2vBKZHU1w_0zAYhQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$-bCWk5ZXsHR2vBKZHU1w_0zAYhQ;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$S1-a8P8AreQvlpv2UxdMOV65Jpw;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$S1-a8P8AreQvlpv2UxdMOV65Jpw;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yh2hFEQ99nl1y7wu4Gq8HX8T9M4;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yh2hFEQ99nl1y7wu4Gq8HX8T9M4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$gj5uSvAvEcbgcVOz8vQ6caK_VyY;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$gj5uSvAvEcbgcVOz8vQ6caK_VyY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$JAglJeXCmk2a7qji7O0ae8wgCJs;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$JAglJeXCmk2a7qji7O0ae8wgCJs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$WvLwgYl9ne80XuL5U2QnOPPFres;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$WvLwgYl9ne80XuL5U2QnOPPFres;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$1vtyKPqvtDvMDDhviZ9PwJpCuhY;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$1vtyKPqvtDvMDDhviZ9PwJpCuhY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$pThzfRh-Hbhj1XX7f4rK8-QvJRI;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$pThzfRh-Hbhj1XX7f4rK8-QvJRI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4m-PPw6XibORNKUMRK-4vi6rq6k;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4m-PPw6XibORNKUMRK-4vi6rq6k;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Mg2GDL2x-KPdrvfiz_PaLa4GQNU;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Mg2GDL2x-KPdrvfiz_PaLa4GQNU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$p2jYNSRKjmjwcuPF_6Z190u8bXk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$p2jYNSRKjmjwcuPF_6Z190u8bXk;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$xw1zzsY4P1xNfzh2C-iJZqFdRbQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$xw1zzsY4P1xNfzh2C-iJZqFdRbQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$HdFWNftbc_EvDfDdijA_iQ1K6G8;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$HdFWNftbc_EvDfDdijA_iQ1K6G8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$XQPo0iCcaC84sTIQVVNB6dg6eAQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$XQPo0iCcaC84sTIQVVNB6dg6eAQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f-scTCCkhJLyqSgNlXQ1_GPsRh8;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$f-scTCCkhJLyqSgNlXQ1_GPsRh8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9zJyyFsee2Zy7CUT-PDsRbo9oq0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9zJyyFsee2Zy7CUT-PDsRbo9oq0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$RRSoFi_FR2XiSxx60PBtV2z48CI;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$RRSoFi_FR2XiSxx60PBtV2z48CI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOOD_BLUR_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$T2c_SB9R7Bl2LomwZJjv-1t_9rc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$T2c_SB9R7Bl2LomwZJjv-1t_9rc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$VPyLCWZGDlsCmuLXFp9Daa_kr7Q;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$VPyLCWZGDlsCmuLXFp9Daa_kr7Q;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Fsu-bIENsLy8V7utoY-QT2AZYqs;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Fsu-bIENsLy8V7utoY-QT2AZYqs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$urKizyf-bntFw_DRThFMctHctbY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ValueSetterMap$urKizyf-bntFw_DRThFMctHctbY;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$y03RuJCdr3fDitaIJkQSPC92F3Q;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$y03RuJCdr3fDitaIJkQSPC92F3Q;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$gO6bifNYmJQQ9_qZxRUlXDAZlf8;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$gO6bifNYmJQQ9_qZxRUlXDAZlf8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$-OdgCgt3eIChTJ9S3Bfg1dFHeis;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$-OdgCgt3eIChTJ9S3Bfg1dFHeis;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$v8VX2x71wlydO3azR8h6n6ZYNvU;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$v8VX2x71wlydO3azR8h6n6ZYNvU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$xhT_QUL00yme5gfhVv7RR-Bmjcg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$xhT_QUL00yme5gfhVv7RR-Bmjcg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$eKOfBaGH8F_FXYEzyiL_IeBcY0o;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$eKOfBaGH8F_FXYEzyiL_IeBcY0o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$8KzuJp2hW3kSH_x3fkQFiTDFkS8;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$8KzuJp2hW3kSH_x3fkQFiTDFkS8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$rlFkDyboBVIhUZUF_nksXi-LQQo;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$rlFkDyboBVIhUZUF_nksXi-LQQo;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$h5Dc_a95z-Lili2eXC4yjLJSH00;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$h5Dc_a95z-Lili2eXC4yjLJSH00;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$i-yVl6N-AD5zzMs9NLzuKE2g8Jc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$i-yVl6N-AD5zzMs9NLzuKE2g8Jc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$w6nXSds4fA3qfC783yVoMwJun4s;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$w6nXSds4fA3qfC783yVoMwJun4s;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_CAMERA_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$I3xbu4I1Ge65eunY0_9zRUaIcjk;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$I3xbu4I1Ge65eunY0_9zRUaIcjk;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$pcWWypzMcxVbmpKA0xmSmSXHAng;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$pcWWypzMcxVbmpKA0xmSmSXHAng;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_FILTERS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$MbKYaUMn9agxHiLAhDS36elw4-g;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$MbKYaUMn9agxHiLAhDS36elw4-g;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$EnIGcIH7dHOZR8Gcghi1vXb4btQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$EnIGcIH7dHOZR8Gcghi1vXb4btQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$iYThdxUkdC7WJXy5PsBJtH1YGM0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$iYThdxUkdC7WJXy5PsBJtH1YGM0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Q4Dr9KwsMMkC5MYr-7QEkU2P-c4;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Q4Dr9KwsMMkC5MYr-7QEkU2P-c4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$XM1OyC5ZnQUgHSehmCNHh7c4OqU;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$XM1OyC5ZnQUgHSehmCNHh7c4OqU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$pUE2opzYUpbSh52EaT9NWWEqgoA;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$pUE2opzYUpbSh52EaT9NWWEqgoA;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$D9PgdDDeOt2L3osQb59BWJfpjoc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$D9PgdDDeOt2L3osQb59BWJfpjoc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$B6bDKPiPRq1IhtxAswezNwjGSqI;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$B6bDKPiPRq1IhtxAswezNwjGSqI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$8SqY8iWv2A11yQB9I2usUwKlEoE;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$8SqY8iWv2A11yQB9I2usUwKlEoE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->REVIEW:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$71eutiZkEdQ4-_ibZlxegeAxjpc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$71eutiZkEdQ4-_ibZlxegeAxjpc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4fb9hb2bahSniVmoNK49ulAB9OY;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4fb9hb2bahSniVmoNK49ulAB9OY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$grkrwAfQb77R8AiBOhcj0kXrSoo;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$grkrwAfQb77R8AiBOhcj0kXrSoo;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_USE_MULTIRECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$6aneJ5p4e0OWHQ4g_ZeXtSsXrXk;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$6aneJ5p4e0OWHQ4g_ZeXtSsXrXk;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$TnVderMWu_ONxf0J382GH_l_gkM;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$TnVderMWu_ONxf0J382GH_l_gkM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VyoC7IzFllZ6XmGhCckfZX6O-k8;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$VyoC7IzFllZ6XmGhCckfZX6O-k8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9zJyyFsee2Zy7CUT-PDsRbo9oq0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9zJyyFsee2Zy7CUT-PDsRbo9oq0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$i-yVl6N-AD5zzMs9NLzuKE2g8Jc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$i-yVl6N-AD5zzMs9NLzuKE2g8Jc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$w6nXSds4fA3qfC783yVoMwJun4s;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$w6nXSds4fA3qfC783yVoMwJun4s;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4jlRet6KxpiyDjquxl8PXQTPk8o;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4jlRet6KxpiyDjquxl8PXQTPk8o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yxkb_zRRAZZRHXjgx6hcc4eLNuQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yxkb_zRRAZZRHXjgx6hcc4eLNuQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9zJyyFsee2Zy7CUT-PDsRbo9oq0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9zJyyFsee2Zy7CUT-PDsRbo9oq0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$i-yVl6N-AD5zzMs9NLzuKE2g8Jc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$i-yVl6N-AD5zzMs9NLzuKE2g8Jc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$w6nXSds4fA3qfC783yVoMwJun4s;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$w6nXSds4fA3qfC783yVoMwJun4s;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$aq8KLCHW34flChycyVpLl-o_9jk;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$aq8KLCHW34flChycyVpLl-o_9jk;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yxkb_zRRAZZRHXjgx6hcc4eLNuQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yxkb_zRRAZZRHXjgx6hcc4eLNuQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$zd7qW7l9NzV5-jiXjMGFOevPlGQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$zd7qW7l9NzV5-jiXjMGFOevPlGQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_VIBRATIONS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$fiFRAIlI335v5OJX597b-yHaKcg;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$fiFRAIlI335v5OJX597b-yHaKcg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$IfNH7PmJ-DcEN_1jaNKJQ6Sd4FQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$IfNH7PmJ-DcEN_1jaNKJQ6Sd4FQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$XQPo0iCcaC84sTIQVVNB6dg6eAQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$XQPo0iCcaC84sTIQVVNB6dg6eAQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9zJyyFsee2Zy7CUT-PDsRbo9oq0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9zJyyFsee2Zy7CUT-PDsRbo9oq0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$i-yVl6N-AD5zzMs9NLzuKE2g8Jc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$i-yVl6N-AD5zzMs9NLzuKE2g8Jc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$w6nXSds4fA3qfC783yVoMwJun4s;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$w6nXSds4fA3qfC783yVoMwJun4s;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$EnIGcIH7dHOZR8Gcghi1vXb4btQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$EnIGcIH7dHOZR8Gcghi1vXb4btQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4fb9hb2bahSniVmoNK49ulAB9OY;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$4fb9hb2bahSniVmoNK49ulAB9OY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yxkb_zRRAZZRHXjgx6hcc4eLNuQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yxkb_zRRAZZRHXjgx6hcc4eLNuQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yxkb_zRRAZZRHXjgx6hcc4eLNuQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yxkb_zRRAZZRHXjgx6hcc4eLNuQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$XQPo0iCcaC84sTIQVVNB6dg6eAQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$XQPo0iCcaC84sTIQVVNB6dg6eAQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9zJyyFsee2Zy7CUT-PDsRbo9oq0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9zJyyFsee2Zy7CUT-PDsRbo9oq0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$i-yVl6N-AD5zzMs9NLzuKE2g8Jc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$i-yVl6N-AD5zzMs9NLzuKE2g8Jc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$w6nXSds4fA3qfC783yVoMwJun4s;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$w6nXSds4fA3qfC783yVoMwJun4s;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$EnIGcIH7dHOZR8Gcghi1vXb4btQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$EnIGcIH7dHOZR8Gcghi1vXb4btQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$bFXjrBEHY8PXyQfYdQCDHTvcfO4;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$bFXjrBEHY8PXyQfYdQCDHTvcfO4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$XQPo0iCcaC84sTIQVVNB6dg6eAQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$XQPo0iCcaC84sTIQVVNB6dg6eAQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$E14vnwBohUcFncTdJxqQeGfzOqs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9zJyyFsee2Zy7CUT-PDsRbo9oq0;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$9zJyyFsee2Zy7CUT-PDsRbo9oq0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$i-yVl6N-AD5zzMs9NLzuKE2g8Jc;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$i-yVl6N-AD5zzMs9NLzuKE2g8Jc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$w6nXSds4fA3qfC783yVoMwJun4s;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$w6nXSds4fA3qfC783yVoMwJun4s;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$EnIGcIH7dHOZR8Gcghi1vXb4btQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$EnIGcIH7dHOZR8Gcghi1vXb4btQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$bFXjrBEHY8PXyQfYdQCDHTvcfO4;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$bFXjrBEHY8PXyQfYdQCDHTvcfO4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yxkb_zRRAZZRHXjgx6hcc4eLNuQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yxkb_zRRAZZRHXjgx6hcc4eLNuQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yxkb_zRRAZZRHXjgx6hcc4eLNuQ;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$Yxkb_zRRAZZRHXjgx6hcc4eLNuQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$eh8AaJVNTqx_3K7VeJnZxoHf2LQ;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$eh8AaJVNTqx_3K7VeJnZxoHf2LQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->mValueSetterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetter;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/ValueSetter;->set(I)V

    return-void
.end method
