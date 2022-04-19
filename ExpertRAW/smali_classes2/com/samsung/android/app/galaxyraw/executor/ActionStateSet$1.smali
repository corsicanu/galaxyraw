.class Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$1;
.super Ljava/util/HashMap;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_21x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_4x3:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_FULL:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_FULL:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19DOT3x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_FULL:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_FULL:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
