.class Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1$2;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->onVoiceListReloadDone(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener<",
        "Ljava/util/List<",
        "Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1$2;->this$1:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1$2;->this$1:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$100(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1$2;->this$1:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$200(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;

    invoke-virtual {v0}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1$2;->this$1:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;

    iget-object v1, v1, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-virtual {v0}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->getLocaleCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$300(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;-><init>(Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1$2;->this$1:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;

    iget-object v1, v1, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-virtual {v0}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->getLocaleCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$400(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;-><init>(Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1$2;->this$1:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1$2;->this$1:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;->onVoiceListReloadDone(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method
