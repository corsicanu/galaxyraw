.class public Lcom/google/android/material/appbar/AppBarLayout$SeslAppbarState;
.super Ljava/lang/Object;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeslAppbarState"
.end annotation


# instance fields
.field private mCurrentState:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$SeslAppbarState;->mCurrentState:I

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$SeslAppbarState;->mCurrentState:I

    return p0
.end method

.method onStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$SeslAppbarState;->mCurrentState:I

    return-void
.end method
