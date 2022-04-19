.class public final enum Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;
.super Ljava/lang/Enum;
.source "GooglePhotosHelperV2.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
        "JPEG",
        "HEIC",
        "MP4",
        "motionphoto_composer_v3.0.42_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

.field public static final enum HEIC:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

.field public static final enum JPEG:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

.field public static final enum MP4:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    new-instance v1, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const-string v2, "JPEG"

    const/4 v3, 0x0

    const-string v4, "image/jpeg"

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->JPEG:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const-string v2, "HEIC"

    const/4 v3, 0x1

    const-string v4, "image/heic"

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->HEIC:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const-string v2, "MP4"

    const/4 v3, 0x2

    const-string v4, "video/mp4"

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->MP4:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->$VALUES:[Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;
    .locals 1

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->$VALUES:[Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    invoke-virtual {v0}, [Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->value:Ljava/lang/String;

    return-object p0
.end method
