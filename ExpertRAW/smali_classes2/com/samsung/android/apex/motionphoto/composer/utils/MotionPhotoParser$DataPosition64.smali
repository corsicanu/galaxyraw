.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;
.super Ljava/lang/Object;
.source "MotionPhotoParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataPosition64"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;",
        "",
        "offset",
        "",
        "length",
        "(JJ)V",
        "getLength",
        "()J",
        "getOffset",
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
.field private final length:J

.field private final offset:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;->offset:J

    iput-wide p3, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;->length:J

    return-void
.end method


# virtual methods
.method public final getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;->length:J

    return-wide v0
.end method

.method public final getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;->offset:J

    return-wide v0
.end method
