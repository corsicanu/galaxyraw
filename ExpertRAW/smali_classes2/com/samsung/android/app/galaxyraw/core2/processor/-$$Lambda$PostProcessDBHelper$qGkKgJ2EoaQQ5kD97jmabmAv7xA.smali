.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessDBHelper$qGkKgJ2EoaQQ5kD97jmabmAv7xA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessDBHelper$qGkKgJ2EoaQQ5kD97jmabmAv7xA;->f$0:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessDBHelper$qGkKgJ2EoaQQ5kD97jmabmAv7xA;->f$0:Landroid/content/ContentValues;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->lambda$recoverSamsungCameraValue$1(Landroid/content/ContentValues;Ljava/lang/Object;)V

    return-void
.end method
