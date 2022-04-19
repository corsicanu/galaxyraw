.class final enum Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;
.super Ljava/lang/Enum;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PostProcessSequenceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

.field public static final enum IDLE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

.field public static final enum PAUSED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

.field public static final enum PROCESSING:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    const-string v3, "PROCESSING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->PROCESSING:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    const-string v5, "PAUSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->PAUSED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    return-object v0
.end method
