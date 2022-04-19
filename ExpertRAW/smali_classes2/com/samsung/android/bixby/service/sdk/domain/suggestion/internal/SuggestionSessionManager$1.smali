.class Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager$1;
.super Ljava/lang/Object;
.source "SuggestionSessionManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SuggestionSessionManager"

    const-string v3, "binderDied deathRecipient callback"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;

    invoke-static {v1}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->access$100(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;)Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;

    invoke-static {v2}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->access$000(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->access$102(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;)Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;

    invoke-static {p0, v0}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->access$200(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;Z)V

    return-void
.end method
