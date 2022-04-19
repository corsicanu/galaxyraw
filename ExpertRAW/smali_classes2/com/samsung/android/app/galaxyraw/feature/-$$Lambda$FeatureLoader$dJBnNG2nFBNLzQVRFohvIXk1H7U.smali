.class public final synthetic Lcom/samsung/android/app/galaxyraw/feature/-$$Lambda$FeatureLoader$dJBnNG2nFBNLzQVRFohvIXk1H7U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/feature/-$$Lambda$FeatureLoader$dJBnNG2nFBNLzQVRFohvIXk1H7U;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/-$$Lambda$FeatureLoader$dJBnNG2nFBNLzQVRFohvIXk1H7U;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->lambda$dJBnNG2nFBNLzQVRFohvIXk1H7U(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
