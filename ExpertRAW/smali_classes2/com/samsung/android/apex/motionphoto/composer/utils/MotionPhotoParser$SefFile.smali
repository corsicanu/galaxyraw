.class public interface abstract Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile;
.super Ljava/lang/Object;
.source "MotionPhotoParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SefFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefRandomAccessFile;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001:\u0002\u000e\u000fJ\u0008\u0010\u0002\u001a\u00020\u0003H&J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH&J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0008\u0010\r\u001a\u00020\u0003H&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile;",
        "",
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
        "SefFileStream",
        "SefRandomAccessFile",
        "motionphoto_composer_v3.0.42_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract position()J
.end method

.method public abstract read([BII)V
.end method

.method public abstract seek(J)V
.end method

.method public abstract size()J
.end method
