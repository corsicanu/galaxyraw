.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefRandomAccessFile;
.super Ljava/lang/Object;
.source "MotionPhotoParser.kt"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SefRandomAccessFile"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\tH\u0016J\u0008\u0010\u0013\u001a\u00020\tH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefRandomAccessFile;",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile;",
        "raf",
        "Ljava/io/RandomAccessFile;",
        "(Ljava/io/RandomAccessFile;)V",
        "getRaf",
        "()Ljava/io/RandomAccessFile;",
        "setRaf",
        "position",
        "",
        "read",
        "",
        "bytes",
        "",
        "offset",
        "",
        "length",
        "seek",
        "l",
        "size",
        "motionphoto_composer_v3.0.42_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1

    const-string v0, "raf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefRandomAccessFile;->raf:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public final getRaf()Ljava/io/RandomAccessFile;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefRandomAccessFile;->raf:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method public position()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefRandomAccessFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefRandomAccessFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    return-void
.end method

.method public seek(J)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefRandomAccessFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public final setRaf(Ljava/io/RandomAccessFile;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefRandomAccessFile;->raf:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public size()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefRandomAccessFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method
