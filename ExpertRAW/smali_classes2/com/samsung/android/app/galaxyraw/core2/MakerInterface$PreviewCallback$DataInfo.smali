.class public Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataInfo"
.end annotation


# instance fields
.field private final mFormat:I

.field private final mSize:Landroid/util/Size;

.field private final mTimeStamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/util/Size;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "timeStamp",
            "format"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->mSize:Landroid/util/Size;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->mTimeStamp:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->mFormat:I

    return-void
.end method


# virtual methods
.method public getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->mSize:Landroid/util/Size;

    return-object p0
.end method

.method public getTimeStamp()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->mTimeStamp:Ljava/lang/Long;

    return-object p0
.end method

.method public serialize()[B
    .locals 4

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->mTimeStamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->mFormat:I

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->mSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method
