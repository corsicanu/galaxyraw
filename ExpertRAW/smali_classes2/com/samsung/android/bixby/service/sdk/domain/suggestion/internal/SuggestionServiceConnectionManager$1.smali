.class Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager$1;
.super Ljava/lang/Object;
.source "SuggestionServiceConnectionManager.java"

# interfaces
.implements Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;->access$000(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;->access$100(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;Z)V

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;

    invoke-static {p0}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;->access$000(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisconnected()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;->access$000(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;->access$100(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;Z)V

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;

    invoke-static {p0}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;->access$000(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionServiceConnectionManager;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
