.class public Lcom/samsung/android/app/galaxyraw/data/MultiPreviewItem;
.super Ljava/lang/Object;
.source "MultiPreviewItem.java"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field private mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private mIsSelected:Z

.field private mIsTrackingStateValid:Z

.field private mLensType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commandId",
            "lensType",
            "isTrackingStateValid"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/MultiPreviewItem;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/data/MultiPreviewItem;->mLensType:I

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/data/MultiPreviewItem;->mIsTrackingStateValid:Z

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/MultiPreviewItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/MultiPreviewItem;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method public getLensType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/data/MultiPreviewItem;->mLensType:I

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/MultiPreviewItem;->mIsSelected:Z

    return p0
.end method

.method public isTrackingStateValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/MultiPreviewItem;->mIsTrackingStateValid:Z

    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/MultiPreviewItem;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIsTrackingStateValid(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTrackingStateValid"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/MultiPreviewItem;->mIsTrackingStateValid:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSelected"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/MultiPreviewItem;->mIsSelected:Z

    return-void
.end method
