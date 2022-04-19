.class public final enum Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;
.super Ljava/lang/Enum;
.source "MakerCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForceLowMemoryCaptureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

.field public static final enum IDLE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

.field public static final enum STARTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

.field public static final enum TIME_WAIT:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->STARTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    const-string v5, "TIME_WAIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->TIME_WAIT:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    return-object v0
.end method
