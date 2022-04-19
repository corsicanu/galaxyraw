.class public Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;
.super Ljava/lang/Object;
.source "ImageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;
    }
.end annotation


# static fields
.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mRotation:I

.field private final mWidth:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;->mWidth:I

    iput p2, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;->mHeight:I

    iput p3, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;->mRotation:I

    iput p4, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;->mFormat:I

    return-void
.end method

.method synthetic constructor <init>(IIIILcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public getFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;->mFormat:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;->mHeight:I

    return p0
.end method

.method public getRotation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;->mRotation:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;->mWidth:I

    return p0
.end method
