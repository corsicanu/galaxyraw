.class public final enum Lcom/google/ar/core/Session$Feature;
.super Ljava/lang/Enum;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ar/core/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ar/core/Session$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Session$Feature;

.field public static final enum FRONT_CAMERA:Lcom/google/ar/core/Session$Feature;

.field public static final enum SHARED_CAMERA:Lcom/google/ar/core/Session$Feature;


# instance fields
.field final nativeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/ar/core/Session$Feature;

    const-string v1, "FRONT_CAMERA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/Session$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$Feature;->FRONT_CAMERA:Lcom/google/ar/core/Session$Feature;

    new-instance v1, Lcom/google/ar/core/Session$Feature;

    const-string v4, "SHARED_CAMERA"

    const/16 v5, 0x3e8

    invoke-direct {v1, v4, v3, v5}, Lcom/google/ar/core/Session$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/ar/core/Session$Feature;->SHARED_CAMERA:Lcom/google/ar/core/Session$Feature;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/ar/core/Session$Feature;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/google/ar/core/Session$Feature;->$VALUES:[Lcom/google/ar/core/Session$Feature;

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

    iput p3, p0, Lcom/google/ar/core/Session$Feature;->nativeCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Session$Feature;
    .locals 1

    const-class v0, Lcom/google/ar/core/Session$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ar/core/Session$Feature;

    return-object p0
.end method

.method public static values()[Lcom/google/ar/core/Session$Feature;
    .locals 1

    sget-object v0, Lcom/google/ar/core/Session$Feature;->$VALUES:[Lcom/google/ar/core/Session$Feature;

    invoke-virtual {v0}, [Lcom/google/ar/core/Session$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/Session$Feature;

    return-object v0
.end method
