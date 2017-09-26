.class public interface abstract Lcom/google/android/exoplayer/chunk/BaseChunkSampleSourceEventListener;
.super Ljava/lang/Object;
.source "BaseChunkSampleSourceEventListener.java"


# virtual methods
.method public abstract onDownstreamFormatChanged(ILcom/google/android/exoplayer/chunk/Format;II)V
.end method

.method public abstract onLoadCanceled(IJ)V
.end method

.method public abstract onLoadCompleted(IJIILcom/google/android/exoplayer/chunk/Format;IIJJ)V
.end method

.method public abstract onLoadError(ILjava/io/IOException;)V
.end method

.method public abstract onLoadStarted(IJIILcom/google/android/exoplayer/chunk/Format;II)V
.end method

.method public abstract onUpstreamDiscarded(III)V
.end method
