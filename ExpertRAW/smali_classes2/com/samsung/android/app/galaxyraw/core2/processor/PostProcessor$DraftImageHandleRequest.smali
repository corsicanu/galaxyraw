.class final enum Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;
.super Ljava/lang/Enum;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DraftImageHandleRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

.field public static final enum RECOVERY:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

.field public static final enum REMOVE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    const-string v1, "RECOVERY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;->RECOVERY:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    const-string v3, "REMOVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;->REMOVE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    return-object v0
.end method
