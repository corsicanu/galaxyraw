.class final Lcom/google/android/gms/common/api/internal/zaaf;
.super Ljava/lang/Object;


# instance fields
.field private final zafp:Lcom/google/android/gms/common/api/internal/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zai<",
            "*>;"
        }
    .end annotation
.end field

.field private final zafq:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zai;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zai<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaf;->zafq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaf;->zafp:Lcom/google/android/gms/common/api/internal/zai;

    return-void
.end method


# virtual methods
.method public final zaal()Lcom/google/android/gms/tasks/TaskCompletionSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaf;->zafq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public final zak()Lcom/google/android/gms/common/api/internal/zai;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/zai<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaaf;->zafp:Lcom/google/android/gms/common/api/internal/zai;

    return-object p0
.end method