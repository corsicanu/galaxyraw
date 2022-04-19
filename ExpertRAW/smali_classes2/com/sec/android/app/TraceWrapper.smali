.class public Lcom/sec/android/app/TraceWrapper;
.super Ljava/lang/Object;
.source "TraceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/TraceWrapper$TraceHelperImplDummy;,
        Lcom/sec/android/app/TraceWrapper$TraceHelperImpl23;,
        Lcom/sec/android/app/TraceWrapper$TraceHelperBase;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TraceWrapper"

.field private static final TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/sec/android/app/TraceWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "No proper trace helper implementation. Using dummy."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/TraceWrapper$TraceHelperImplDummy;

    invoke-direct {v0, v2}, Lcom/sec/android/app/TraceWrapper$TraceHelperImplDummy;-><init>(Lcom/sec/android/app/TraceWrapper$1;)V

    sput-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/sec/android/app/TraceWrapper$TraceHelperImpl23;

    invoke-direct {v0, v2}, Lcom/sec/android/app/TraceWrapper$TraceHelperImpl23;-><init>(Lcom/sec/android/app/TraceWrapper$1;)V

    sput-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncTraceBegin(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/TraceWrapper$TraceHelperBase;->asyncTraceBegin(Ljava/lang/String;I)V

    return-void
.end method

.method public static asyncTraceEnd(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/TraceWrapper$TraceHelperBase;->asyncTraceEnd(Ljava/lang/String;I)V

    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    invoke-interface {v0, p0}, Lcom/sec/android/app/TraceWrapper$TraceHelperBase;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method public static traceCounter(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/TraceWrapper$TraceHelperBase;->traceCounter(Ljava/lang/String;I)V

    return-void
.end method

.method public static traceEnd()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/TraceWrapper;->TRACE_IMPL:Lcom/sec/android/app/TraceWrapper$TraceHelperBase;

    invoke-interface {v0}, Lcom/sec/android/app/TraceWrapper$TraceHelperBase;->traceEnd()V

    return-void
.end method
