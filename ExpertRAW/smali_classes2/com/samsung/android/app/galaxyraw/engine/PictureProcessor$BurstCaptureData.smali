.class Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;
.super Ljava/lang/Object;
.source "PictureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurstCaptureData"
.end annotation


# static fields
.field private static final REPRESENTATIVE_ITEM:I


# instance fields
.field private mBurstCaptureGroupId:I

.field private mContentValues:Landroid/content/ContentValues;

.field private mIsSaved:Z

.field private mSecUri:Landroid/net/Uri;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;ILandroid/content/ContentValues;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "burstCaptureGroupId",
            "contentValues"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mBurstCaptureGroupId:I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->setIsSaved(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mSecUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mIsSaved:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->clear()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mBurstCaptureGroupId:I

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mContentValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->setUri(Landroid/util/Pair;)V

    return-void
.end method

.method private clear()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mBurstCaptureGroupId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mSecUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mContentValues:Landroid/content/ContentValues;

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mIsSaved:Z

    return-void
.end method

.method private setIsSaved(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSaved"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mIsSaved:Z

    return-void
.end method

.method private setUri(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriPair"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mSecUri:Landroid/net/Uri;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->mUri:Landroid/net/Uri;

    return-void
.end method
