.class public final Lcom/google/android/gms/common/api/internal/zabv;
.super Ljava/lang/Object;


# instance fields
.field public final zajq:Lcom/google/android/gms/common/api/internal/zab;

.field public final zajr:I

.field public final zajs:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zab;ILcom/google/android/gms/common/api/GoogleApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zab;",
            "I",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabv;->zajq:Lcom/google/android/gms/common/api/internal/zab;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zabv;->zajr:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zabv;->zajs:Lcom/google/android/gms/common/api/GoogleApi;

    return-void
.end method
