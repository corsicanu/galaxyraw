.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$H4sYbrVFISa0eLrDb4VEPReAQMM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$H4sYbrVFISa0eLrDb4VEPReAQMM;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$H4sYbrVFISa0eLrDb4VEPReAQMM;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->shutdownEngine()V

    return-void
.end method
