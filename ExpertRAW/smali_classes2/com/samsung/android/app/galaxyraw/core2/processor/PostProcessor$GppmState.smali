.class abstract enum Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;
.super Ljava/lang/Enum;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "GppmState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

.field public static final enum READY:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

.field public static final enum STARTED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

.field public static final enum STOPPED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

.field public static final enum STOPPING:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState$1;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;->READY:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState$2;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;->STARTED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState$3;

    const-string v5, "STOPPING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;->STOPPING:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState$4;

    const-string v7, "STOPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;->STOPPED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

    return-object v0
.end method


# virtual methods
.method abstract updateState(Landroid/content/Context;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation
.end method
