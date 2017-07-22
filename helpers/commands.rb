module Commands
  def Commands.ls
    `ls`
  end

  def Commands.date
    `date`
  end

  def Commands.figlet string
    `figlet #{string}`
  end
end
