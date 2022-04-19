.class public Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;
.super Ljava/lang/Object;
.source "ImageViewPagerItem.java"


# instance fields
.field private final mLocation:[D

.field private mMarkedForDelete:Z

.field private final mOrientation:I

.field private final mPath:Ljava/lang/String;

.field private final mSecMediaId:J

.field private final mSefType:I


# direct methods
.method public constructor <init>(JLjava/lang/String;II[D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_id",
            "path",
            "sefType",
            "orientation",
            "location"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->mPath:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->mSefType:I

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->mOrientation:I

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->mLocation:[D

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->mSecMediaId:J

    return-void
.end method


# virtual methods
.method public getLocation()[D
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->mLocation:[D

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->mOrientation:I

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSecMediaId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->mSecMediaId:J

    return-wide v0
.end method

.method public getSefType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->mSefType:I

    return p0
.end method

.method public isMarkedForDelete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->mMarkedForDelete:Z

    return p0
.end method

.method public setMarkedForDelete(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "markedForDelete"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->mMarkedForDelete:Z

    return-void
.end method
