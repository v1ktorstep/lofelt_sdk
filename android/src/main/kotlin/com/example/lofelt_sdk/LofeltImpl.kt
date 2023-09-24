package com.example.lofelt_sdk

import Lofelt
import android.content.Context
import com.lofelt.haptics.LofeltHaptics

class LofeltImpl(private val context: Context) : Lofelt {

    var haptics: LofeltHaptics? = null

    override fun initHaptics() {
        haptics = LofeltHaptics(context)
    }

    override fun deviceMeetsMinimumRequirements(): Boolean {
        return haptics?.deviceMeetsMinimumRequirements() ?: false
    }

    override fun load(data: String) {
        haptics?.load(data.toByteArray())
    }

    override fun play() {
        haptics?.play()
    }

    override fun stop() {
        haptics?.stop()
    }

    override fun seek(time: Double) {
        haptics?.seek(time.toFloat())
    }

    override fun loop(enabled: Boolean) {
        haptics?.loop(enabled)
    }

    override fun setAmplitudeMultiplication(factor: Double) {
        haptics?.setAmplitudeMultiplication(factor.toFloat())
    }

    override fun setFrequencyShift(shift: Double) {
    }

    override fun clipDuration(): Double {
        return haptics?.clipDuration?.toDouble() ?: 0.0
    }
}