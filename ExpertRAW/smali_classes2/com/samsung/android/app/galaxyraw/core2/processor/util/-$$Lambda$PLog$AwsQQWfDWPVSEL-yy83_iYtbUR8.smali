.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/processor/util/-$$Lambda$PLog$AwsQQWfDWPVSEL-yy83_iYtbUR8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/nio/file/PathMatcher;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/PathMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/-$$Lambda$PLog$AwsQQWfDWPVSEL-yy83_iYtbUR8;->f$0:Ljava/nio/file/PathMatcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/-$$Lambda$PLog$AwsQQWfDWPVSEL-yy83_iYtbUR8;->f$0:Ljava/nio/file/PathMatcher;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->lambda$removeExceededPLogFiles$0(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method
