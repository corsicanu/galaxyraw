.class public Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo$ThumbnailImgFormat;
    }
.end annotation


# instance fields
.field private mFormat:I

.field private mSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(ILandroid/util/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "size"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;->mFormat:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;->mSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public getFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;->mFormat:I

    return p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;->mSize:Landroid/util/Size;

    return-object p0
.end method
