.class public Lcom/sec/android/diagmonagent/common/NativeHelper;
.super Ljava/lang/Object;
.source "NativeHelper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DiagMonKey"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getRandomId()[C
.end method
