.class public Lcom/samsung/android/app/galaxyraw/core2/util/BufferInfo;
.super Ljava/lang/Object;
.source "BufferInfo.java"


# instance fields
.field public imageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

.field public imageSize:Landroid/util/Size;

.field public strideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferInfo;->imageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferInfo;->imageSize:Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferInfo;->strideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "size",
            "strideInfo"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferInfo;->imageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferInfo;->imageSize:Landroid/util/Size;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferInfo;->strideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferInfo;->imageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferInfo;->imageSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferInfo;->strideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "buffer(%s), size(%s), strideInfo(%s)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
