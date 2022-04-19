.class public final synthetic Lcom/samsung/android/app/galaxyraw/util/debug/-$$Lambda$DebugUtil$qF6NFNGCR2h0XxDcst6CgAoMCL0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/debug/-$$Lambda$DebugUtil$qF6NFNGCR2h0XxDcst6CgAoMCL0;->f$0:[I

    return-void
.end method


# virtual methods
.method public final onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/debug/-$$Lambda$DebugUtil$qF6NFNGCR2h0XxDcst6CgAoMCL0;->f$0:[I

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/util/debug/DebugUtil;->lambda$addOnFrameMetricsAvailableListener$0([ILandroid/view/Window;Landroid/view/FrameMetrics;I)V

    return-void
.end method
