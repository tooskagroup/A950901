.class public interface abstract Lorg/telegram/messenger/exoplayer/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/ExoPlayer$ExoPlayerComponent;,
        Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;,
        Lorg/telegram/messenger/exoplayer/ExoPlayer$Factory;
    }
.end annotation


# static fields
.field public static final STATE_BUFFERING:I = 0x3

.field public static final STATE_ENDED:I = 0x5

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_PREPARING:I = 0x2

.field public static final STATE_READY:I = 0x4

.field public static final TRACK_DEFAULT:I = 0x0

.field public static final TRACK_DISABLED:I = -0x1

.field public static final UNKNOWN_TIME:J = -0x1L


# virtual methods
.method public abstract addListener(Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;)V
.end method

.method public abstract blockingSendMessage(Lorg/telegram/messenger/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
.end method

.method public abstract getBufferedPercentage()I
.end method

.method public abstract getBufferedPosition()J
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract getPlaybackLooper()Landroid/os/Looper;
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract getSelectedTrack(I)I
.end method

.method public abstract getTrackCount(I)I
.end method

.method public abstract getTrackFormat(II)Lorg/telegram/messenger/exoplayer/MediaFormat;
.end method

.method public abstract isPlayWhenReadyCommitted()Z
.end method

.method public varargs abstract prepare([Lorg/telegram/messenger/exoplayer/TrackRenderer;)V
.end method

.method public abstract release()V
.end method

.method public abstract removeListener(Lorg/telegram/messenger/exoplayer/ExoPlayer$Listener;)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract sendMessage(Lorg/telegram/messenger/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract setSelectedTrack(II)V
.end method

.method public abstract stop()V
.end method
