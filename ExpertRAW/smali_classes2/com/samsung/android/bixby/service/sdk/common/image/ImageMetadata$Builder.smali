.class public Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;
.super Ljava/lang/Object;
.source "ImageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private format:I

.field private height:I

.field private rotation:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;
    .locals 7

    new-instance v6, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;

    iget v1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;->width:I

    iget v2, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;->height:I

    iget v3, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;->rotation:I

    iget v4, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;->format:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;-><init>(IIIILcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$1;)V

    return-object v6
.end method

.method public setFormat(I)Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;->format:I

    return-object p0
.end method

.method public setHeight(I)Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;->height:I

    return-object p0
.end method

.method public setRotation(I)Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;->rotation:I

    return-object p0
.end method

.method public setWidth(I)Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata$Builder;->width:I

    return-object p0
.end method
