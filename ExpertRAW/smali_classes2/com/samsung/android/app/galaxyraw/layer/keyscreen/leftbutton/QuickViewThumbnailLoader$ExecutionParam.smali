.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;
.super Ljava/lang/Object;
.source "QuickViewThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecutionParam"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIsScaleAnimationRequired:Z

.field private mOrientation:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "orientation",
            "isScaleAnimationRequired"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;->mBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;->mOrientation:I

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;->mIsScaleAnimationRequired:Z

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;->mOrientation:I

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$ExecutionParam;->mIsScaleAnimationRequired:Z

    return p0
.end method
