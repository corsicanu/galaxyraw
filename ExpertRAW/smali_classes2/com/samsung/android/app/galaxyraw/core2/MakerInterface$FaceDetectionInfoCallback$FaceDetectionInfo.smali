.class public Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceDetectionInfo"
.end annotation


# instance fields
.field private mCropRegion:Landroid/graphics/Rect;

.field private mFaces:[Landroid/hardware/camera2/params/Face;


# direct methods
.method public constructor <init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faces",
            "cropRegion"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;->mFaces:[Landroid/hardware/camera2/params/Face;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;->mCropRegion:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getCropRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;->mCropRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getFaces()[Landroid/hardware/camera2/params/Face;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;->mFaces:[Landroid/hardware/camera2/params/Face;

    return-object p0
.end method
