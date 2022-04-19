.class Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequenceCondition"
.end annotation


# instance fields
.field private final isDraftImageSaved:Z

.field private final isRequestCollectionCompleted:Z

.field private final isRequestCollectionStopped:Z


# direct methods
.method private constructor <init>(ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isDraftImageSaved",
            "isRequestCollectionCompleted",
            "isRequestCollectionStopped"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;->isDraftImageSaved:Z

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;->isRequestCollectionCompleted:Z

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;->isRequestCollectionStopped:Z

    return-void
.end method

.method synthetic constructor <init>(ZZZLcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;-><init>(ZZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;->isDraftImageSaved:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;->isRequestCollectionCompleted:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;->isRequestCollectionStopped:Z

    return p0
.end method
