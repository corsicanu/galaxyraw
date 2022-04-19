.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$4kBj4fI386pzeYuEujb18Z9_JdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

.field public final synthetic f$1:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$2:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$ListenerWrapper;

.field public final synthetic f$3:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$ListenerWrapper;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$4kBj4fI386pzeYuEujb18Z9_JdU;->f$0:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$4kBj4fI386pzeYuEujb18Z9_JdU;->f$1:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$4kBj4fI386pzeYuEujb18Z9_JdU;->f$2:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$ListenerWrapper;

    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$4kBj4fI386pzeYuEujb18Z9_JdU;->f$3:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$4kBj4fI386pzeYuEujb18Z9_JdU;->f$0:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$4kBj4fI386pzeYuEujb18Z9_JdU;->f$1:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$4kBj4fI386pzeYuEujb18Z9_JdU;->f$2:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$ListenerWrapper;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$4kBj4fI386pzeYuEujb18Z9_JdU;->f$3:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->lambda$start$1$SpeechRecognizerTask(Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$ListenerWrapper;Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;)V

    return-void
.end method
