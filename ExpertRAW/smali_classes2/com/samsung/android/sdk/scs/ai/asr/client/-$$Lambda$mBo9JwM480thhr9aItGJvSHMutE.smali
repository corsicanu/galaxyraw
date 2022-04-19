.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$mBo9JwM480thhr9aItGJvSHMutE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$mBo9JwM480thhr9aItGJvSHMutE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$mBo9JwM480thhr9aItGJvSHMutE;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$mBo9JwM480thhr9aItGJvSHMutE;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$mBo9JwM480thhr9aItGJvSHMutE;->INSTANCE:Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$mBo9JwM480thhr9aItGJvSHMutE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->destroy()V

    return-void
.end method
