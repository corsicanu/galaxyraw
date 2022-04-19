.class public Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData$1;

    invoke-direct {v0}, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->mUri:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context or uri is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bitmap is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->mUri:Ljava/lang/String;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "byte array is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>([BLcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;
    .locals 1

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;

    invoke-direct {v0, p0}, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static fromByteArray([BLcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;)Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;

    invoke-direct {p1, p0}, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;-><init>([B)V

    return-object p1

    :cond_0
    new-instance v0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;-><init>([BLcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;)V

    return-object v0
.end method

.method public static fromByteBuffer(Ljava/nio/ByteBuffer;Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;)Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;
    .locals 1

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/bixby/service/sdk/common/image/ImageMetadata;)V

    return-object v0
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->mUri:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
