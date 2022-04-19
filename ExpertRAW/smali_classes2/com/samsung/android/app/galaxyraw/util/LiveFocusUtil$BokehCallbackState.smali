.class public final enum Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;
.super Ljava/lang/Enum;
.source "LiveFocusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BokehCallbackState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum ERROR_DISTANCE_TOO_CLOSE:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum ERROR_DISTANCE_TOO_FAR:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum ERROR_INVALID_DEPTH:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum ERROR_LENS_PARTIALLY_COVERED:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum ERROR_LOW_LIGHT_CONDITION:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum ERROR_NO_FACE_DETECTED:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum NONE:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum SUCCESS:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;


# instance fields
.field private final mMetadata:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->SUCCESS:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    const-string v5, "ERROR_INVALID_DEPTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->ERROR_INVALID_DEPTH:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    const-string v7, "ERROR_DISTANCE_TOO_FAR"

    const/4 v8, 0x3

    const/16 v9, 0xb

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->ERROR_DISTANCE_TOO_FAR:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    const-string v9, "ERROR_DISTANCE_TOO_CLOSE"

    const/4 v10, 0x4

    const/16 v11, 0xc

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->ERROR_DISTANCE_TOO_CLOSE:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    const-string v11, "ERROR_LENS_PARTIALLY_COVERED"

    const/4 v12, 0x5

    const/16 v13, 0x15

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->ERROR_LENS_PARTIALLY_COVERED:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    const-string v13, "ERROR_LOW_LIGHT_CONDITION"

    const/4 v14, 0x6

    const/16 v15, 0x1f

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->ERROR_LOW_LIGHT_CONDITION:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    const-string v15, "ERROR_NO_FACE_DETECTED"

    const/4 v14, 0x7

    const/16 v12, 0x29

    invoke-direct {v13, v15, v14, v12}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->ERROR_NO_FACE_DETECTED:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "metadata"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->mMetadata:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->mMetadata:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehCallbackState;

    return-object v0
.end method
