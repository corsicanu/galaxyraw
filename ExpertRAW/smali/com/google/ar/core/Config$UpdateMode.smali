.class public final enum Lcom/google/ar/core/Config$UpdateMode;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ar/core/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ar/core/Config$UpdateMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Config$UpdateMode;

.field public static final enum BLOCKING:Lcom/google/ar/core/Config$UpdateMode;

.field public static final enum LATEST_CAMERA_IMAGE:Lcom/google/ar/core/Config$UpdateMode;


# instance fields
.field final nativeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/ar/core/Config$UpdateMode;

    const-string v1, "BLOCKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$UpdateMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Config$UpdateMode;->BLOCKING:Lcom/google/ar/core/Config$UpdateMode;

    new-instance v1, Lcom/google/ar/core/Config$UpdateMode;

    const-string v3, "LATEST_CAMERA_IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/ar/core/Config$UpdateMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/ar/core/Config$UpdateMode;->LATEST_CAMERA_IMAGE:Lcom/google/ar/core/Config$UpdateMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/ar/core/Config$UpdateMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/ar/core/Config$UpdateMode;->$VALUES:[Lcom/google/ar/core/Config$UpdateMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ar/core/Config$UpdateMode;->nativeCode:I

    return-void
.end method

.method static forNumber(I)Lcom/google/ar/core/Config$UpdateMode;
    .locals 5

    invoke-static {}, Lcom/google/ar/core/Config$UpdateMode;->values()[Lcom/google/ar/core/Config$UpdateMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/google/ar/core/Config$UpdateMode;->nativeCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const/16 v1, 0x39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected value for native UpdateMode, value="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Config$UpdateMode;
    .locals 1

    const-class v0, Lcom/google/ar/core/Config$UpdateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ar/core/Config$UpdateMode;

    return-object p0
.end method

.method public static values()[Lcom/google/ar/core/Config$UpdateMode;
    .locals 1

    sget-object v0, Lcom/google/ar/core/Config$UpdateMode;->$VALUES:[Lcom/google/ar/core/Config$UpdateMode;

    invoke-virtual {v0}, [Lcom/google/ar/core/Config$UpdateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/Config$UpdateMode;

    return-object v0
.end method
