.class Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;
.super Ljava/lang/Object;
.source "CameraShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShootingModeInfo"
.end annotation


# instance fields
.field private final mFacing:I

.field private final mShootingModeId:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "shootingModeId"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->mFacing:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    return p0
.end method


# virtual methods
.method getActivityName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->getActivityNameMap(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getCameraIdList()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->mFacing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->getBackCameraIdList(I)Landroid/util/SparseArray;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->getFrontCameraIdList(I)Landroid/util/SparseArray;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->mShootingModeId:I

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    return-object p0
.end method
